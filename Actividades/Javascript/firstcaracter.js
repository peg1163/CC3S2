function firstcaracter(string){
    for(let i=0;i<string.length;i++){
        if(string.indexOf(string[i])===string.lastIndexOf(string[i])){
            return string[i];
        }
    }
    return null;
}
let ejemplo = "abacabad";
let primerNoDuplicado = firstcaracter(ejemplo);

console.log(primerNoDuplicado);