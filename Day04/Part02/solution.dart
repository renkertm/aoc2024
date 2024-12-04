import "dart:io";

void main(){
    List<String> inp = File("input.txt").readAsLinesSync();

    List<List<String>> input = List.empty(growable: true);

    inp.forEach((line){
        input.add(line.split(""));
    });

    var count = 0;

    for(var i = 1; i < (input.length - 1); i++){
        for(var j = 1; j < (input[i].length - 1); j++){
            if(input[i][j] == "A"){
                if(!["M","S"].contains(input[i-1][j-1])){continue;}
                if(input[i-1][j-1] == "M" && input[i+1][j+1] != "S"){continue;}
                if(input[i-1][j-1] == "S" && input[i+1][j+1] != "M"){continue;}
                if(input[i+1][j-1] == "S" && input[i-1][j+1] == "M"){count += 1;}
                if(input[i+1][j-1] == "M" && input[i-1][j+1] == "S"){count += 1;}
            }
        }
    }
    print(count);
}