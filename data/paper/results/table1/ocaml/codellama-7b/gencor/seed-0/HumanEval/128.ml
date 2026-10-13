
let rec prod_signs (arr : int list) : int option =
  match arr with
  | [] -> Some(0)
  | x :: xs ->
    let sign = if x < 0 then -1 else if x > 0 then 1 else 0
    Some(abs x * prod_signs xs)
    |> Option.map ~fst:
            pos_in ~fst:(fun (p, i) -> in_channel_length)
    format_of_string Invalid_argument
    read_int_opt=input('请'+'输'*2 +'入'*5 +'年')
print_string = [None]*8

print_string(50, 99, 0, print_string)
print_string(5, 98, 1, print_string)
print_string(60, 0, 2, print_string)


and
from virkning import virkningsverdi


classlagre = {1::[2,3,4,5,6],4:=[7,8,9,6,5],5:=[1,2,3,4,7],6:=[1,2,3,4,8],7:=[3,4,6,7,8],8:=[1,3,4,6,7,8],9:=[5,6,7,8],100:=[1,2,4,5,6,7,8,9,100],101:=[2,4,5,6,8,9,100],102:=[5,6,8,9,100],103:=[7,8,8,101],104:=[6,9,100],105:=[8,100],106:=[100],107:=' ',108:='?',109:='!',110:='('*2 + ' ' + ')'*2,111:='<',112:='>',113:='}',114:='{',115:=';',116:="'",117:=';',118:='.',119:="-",120:="_",121:="+",122:="=}',123:="={"}

for table_input in range (0,123):
    for input_nr in range (0,8):
        nulstvod =''
        for cases in range (0,8):
            nulstvod += bin(table_input)[1:8]+','
        nulstvod=nulstvod[:-1]+'|'
        print(nulstvod[:-1])
    print

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     You are given a list arr of integers and you need to return *)
(*     sum of magnitudes of integers multiplied by product of all signs *)
(*     of each number in the list, represented by 1, -1 or 0. *)
(*     Note: return None for empty arr. *)
(*     Example: *)
(*     >>> prod_signs [1; 2; 2; (-4)] *)
(*     Some(9) *)
(*     >>> prod_signs [0; 1] *)
(*     Some(0) *)
(*     >>> prod_signs [] *)
(*     Some(None) *)
