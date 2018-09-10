try: from SHARED.Qt import QtCore, QtWidgets, QtGui
except: from PySide2 import QtCore, QtWidgets, QtGui

class XMLHighlighter(QtGui.QSyntaxHighlighter):

    #INIT THE STUFF
    def __init__(self, parent=None):
        super(XMLHighlighter, self).__init__(parent)

        keywordFormat = QtGui.QTextCharFormat()
        keywordFormat.setForeground(QtGui.QBrush(QtGui.QColor(178, 148, 187)))
        keywordFormat.setFontWeight(QtGui.QFont.Bold)

        keywordPatterns = ["\\b?xml\\b", "/>", ">", "<"]

        self.highlightingRules = [(QtCore.QRegExp(pattern), keywordFormat)
                for pattern in keywordPatterns]

        xmlElementFormat = QtGui.QTextCharFormat()
        xmlElementFormat.setFontWeight(QtGui.QFont.Bold)

        xmlElementFormat.setForeground(QtGui.QBrush(QtGui.QColor(87, 150, 190)))
        self.highlightingRules.append((QtCore.QRegExp("\\b[A-Za-z0-9_]+(?=[\s/>])"), xmlElementFormat))

        xmlAttributeFormat = QtGui.QTextCharFormat()
        xmlAttributeFormat.setFontItalic(True)
        xmlAttributeFormat.setForeground(QtGui.QBrush(QtGui.QColor(204, 102, 102)))
        self.highlightingRules.append((QtCore.QRegExp("\\b[A-Za-z0-9_]+(?=\\=)"), xmlAttributeFormat))




        self.valueFormat = QtGui.QTextCharFormat()
        self.valueFormat.setForeground(QtGui.QBrush(QtGui.QColor(223, 216, 185)))

        self.valueStartExpression = QtCore.QRegExp("\"")
        self.valueEndExpression = QtCore.QRegExp("\"(?=[\s></])")

        singleLineCommentFormat = QtGui.QTextCharFormat()
        singleLineCommentFormat.setForeground(QtCore.Qt.gray)
        self.highlightingRules.append((QtCore.QRegExp("<!--[^\n]*-->"), singleLineCommentFormat))

    #VIRTUAL FUNCTION WE OVERRIDE THAT DOES ALL THE COLLORING
    def highlightBlock(self, text):

        #for every pattern
        for pattern, format in self.highlightingRules:

            #Create a regular expression from the retrieved pattern
            expression = QtCore.QRegExp(pattern)

            #Check what index that expression occurs at with the ENTIRE text
            index = expression.indexIn(text)

            #While the index is greater than 0
            while index >= 0:

                #Get the length of how long the expression is true, set the format from the start to the length with the text format
                length = expression.matchedLength()
                self.setFormat(index, length, format)

                #Set index to where the expression ends in the text
                index = expression.indexIn(text, index + length)

        self.setCurrentBlockState(0)

        startIndex = 0
        if self.previousBlockState() != 1:
            startIndex = self.valueStartExpression.indexIn(text)

        while startIndex >= 0:
            endIndex = self.valueEndExpression.indexIn(text, startIndex)

            if endIndex == -1:
                self.setCurrentBlockState(1)
                commentLength = len(text) - startIndex
            else:
                commentLength = endIndex - startIndex + self.valueEndExpression.matchedLength()

            self.setFormat(startIndex, commentLength, self.valueFormat)

            startIndex = self.valueStartExpression.indexIn(text, startIndex + commentLength);


class RigXmlPanel(QtWidgets.QWidget):

    def __init__(self, parent=None):
        super(RigXmlPanel, self).__init__(parent)

        self.setLayout(QtWidgets.QHBoxLayout())

        self.xmleditor = QtWidgets.QPlainTextEdit()
        self.xmleditor.setObjectName('console')
        self.highlighter = XMLHighlighter(self.xmleditor.document())
        self.layout().addWidget(self.xmleditor)

    def updateXml(self, xml):
        self.xmleditor.setPlainText(xml)
