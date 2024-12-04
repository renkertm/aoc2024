import "dart:io";

void main(){
    List<String> inp = File("input.txt").readAsLinesSync();

    List<List<String>> input = List.empty(growable: true);

    inp.forEach((line){
        input.add(line.split(""));
    });

    var count = 0;

    for(var i = 0; i < input.length; i++){
        for(var j = 0; j < input[i].length; j++){
            if(input[i][j] == "X"){
                var from = 0;
                var to = 8;
                if(i < 3){
                    from = 3;
                }
                if(i > (input.length - 4)){
                    to = 5;
                }
                for(var k = from; k <= to; k++){
                    if(k == 4){continue;}
                    if(j < 3 && (k%3) == 0){continue;}
                    if(j > (input[i].length - 4) && (k%3) == 2){continue;}
                    if(input[i+((k/3).floor()-1)][j+((k%3)-1)] == "M"){
                        if(input[i+(((k/3).floor()-1)*2)][j+(((k%3)-1)*2)] == "A" && input[i+(((k/3).floor()-1)*3)][j+(((k%3)-1)*3)] == "S"){
                            count++;
                        }
                    }
                }
            }
        }
    }
    print(count);
}