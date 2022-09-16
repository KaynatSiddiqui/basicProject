function rendereelemntforkatext(){
	renderMathInElement(document.body, {
            delimiters:[
            {left:'\\begin{equation}' , right:'\\end{equation}', display: true},
{left:'$' , right:'$', display: true},
{left:'\\(' , right:'\\)', display: true},

]
        }); 
}