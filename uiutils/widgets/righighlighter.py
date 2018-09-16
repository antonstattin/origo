try: from SHARED.Qt import QtCore, QtWidgets, QtGui
except: from PySide2 import QtCore, QtWidgets, QtGui


class PythonHighlighter(QtGui.QSyntaxHighlighter ):

    def __init__( self, parent, theme ):
        QtGui.QSyntaxHighlighter.__init__( self, parent )
        self.parent = parent
        keyword = QtGui.QTextCharFormat()
        reservedClasses = QtGui.QTextCharFormat()
        assignmentOperator = QtGui.QTextCharFormat()
        delimiter = QtGui.QTextCharFormat()
        specialConstant = QtGui.QTextCharFormat()
        boolean = QtGui.QTextCharFormat()
        number = QtGui.QTextCharFormat()
        comment = QtGui.QTextCharFormat()
        string = QtGui.QTextCharFormat()
        singleQuotedString = QtGui.QTextCharFormat()

        self.highlightingRules = []


        # keyword
        brush = QtGui.QBrush( QtGui.QColor(194, 30, 53), QtCore.Qt.SolidPattern )
        keyword.setForeground( brush )
        keyword.setFontWeight( QtGui.QFont.Bold )
        keywords = [ "break", "else", "for", "if", "in",
                "next", "repeat", "return", "switch",
                "try", "while"]
        for word in keywords:
            pattern = QtCore.QRegExp("\\b" + word + "\\b")
            rule = HighlightingRule( pattern, keyword )
            self.highlightingRules.append( rule )

        # reservedClasses
        reservedClasses.setForeground( brush )
        reservedClasses.setFontWeight( QtGui.QFont.Bold )
        keywords = [ "import", "as", "from",
                "data.frame", "double", "factor",
                "function", "integer", "list",
                "logical", "matrix", "numeric",
                "vector" ]
        for word in keywords:
            pattern = QtCore.QRegExp("\\b" + word + "\\b")
            rule = HighlightingRule( pattern, reservedClasses )
            self.highlightingRules.append( rule )


        # assignmentOperator
        brush = QtGui.QBrush( QtGui.QColor(194, 30, 53), QtCore.Qt.SolidPattern )
        pattern = QtCore.QRegExp( "(<){1,2}-" )
        assignmentOperator.setForeground( brush )
        assignmentOperator.setFontWeight( QtGui.QFont.Bold )
        rule = HighlightingRule( pattern, assignmentOperator )
        self.highlightingRules.append( rule )

        # delimiter
        brush = QtGui.QBrush( QtGui.QColor(184, 140, 194), QtCore.Qt.SolidPattern )
        pattern = QtCore.QRegExp( "[\\]+|[\{\}]+|[][]+" )
        delimiter.setForeground( brush )
        delimiter.setFontWeight( QtGui.QFont.Bold )
        rule = HighlightingRule( pattern, delimiter )
        self.highlightingRules.append( rule )

        # specialConstant
        brush = QtGui.QBrush(QtGui.QColor(140, 150, 200), QtCore.Qt.SolidPattern )
        specialConstant.setForeground( brush )
        specialConstant.setFontWeight( QtGui.QFont.Bold )
        keywords = [ "Inf", "NA", "RIGX", "none", "print"]
        for word in keywords:
            pattern = QtCore.QRegExp("\\b" + word + "\\b")
            rule = HighlightingRule( pattern, specialConstant )
            self.highlightingRules.append( rule )

        # boolean
        boolean.setForeground( brush )
        keywords =[ "true", "false" ]
        for word in keywords:
            pattern = QtCore.QRegExp("\\b" + word + "\\b")
            rule = HighlightingRule( pattern, boolean )
            self.highlightingRules.append( rule )

        # number
        brush = QtGui.QBrush( QtGui.QColor(184, 140, 194), QtCore.Qt.SolidPattern )
        pattern = QtCore.QRegExp( "[-+]?[0-9]*\.?[0-9]+([eE][-+]?[0-9]+)?" )
        pattern.setMinimal( True )
        number.setForeground( brush )
        rule = HighlightingRule( pattern, number )
        self.highlightingRules.append( rule )

        # comment
        brush = QtGui.QBrush( QtGui.QColor(255, 153, 51), QtCore.Qt.SolidPattern )
        pattern = QtCore.QRegExp( "#[^\n]*" )
        comment.setForeground( brush )
        rule = HighlightingRule( pattern, comment )
        self.highlightingRules.append( rule )

        # string
        brush = QtGui.QBrush(  QtGui.QColor(184, 140, 194), QtCore.Qt.SolidPattern )
        pattern = QtCore.QRegExp( "\".*\"" )
        pattern.setMinimal( True )
        string.setForeground( brush )
        rule = HighlightingRule( pattern, string )
        self.highlightingRules.append( rule )

        # singleQuotedString
        pattern = QtCore.QRegExp( "\'.*\'" )
        pattern.setMinimal( True )
        singleQuotedString.setForeground( brush )
        rule = HighlightingRule( pattern, singleQuotedString )
        self.highlightingRules.append( rule )

    def highlightBlock( self, text ):

        for rule in self.highlightingRules:
            expression = QtCore.QRegExp( rule.pattern )
            index = expression.indexIn( text )
            while index >= 0:
                length = expression.matchedLength()
                self.setFormat(index, length, rule.format)
                index = expression.indexIn(text, index + length)

        self.setCurrentBlockState( 0 )

class HighlightingRule():
    def __init__( self, pattern, format ):
        self.pattern = pattern
        self.format = format

class XMLHighlighter(QtGui.QSyntaxHighlighter):
    """ Highlighter, a forked function from some tutorial, altered
        some colors etc.

        Highlights the xml text in a QPlainEdit

        TODO:
            * make it smarter, fix path colors
    """

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
