let rec max_length (list1 : int list list) :  int * int list =
match list1 with
| [] -> 0,[]
| x :: xs ->
let (length, sublist) = max_length xs
    in if List.length x > length then (List.length x,x) else (length, sublist)

let list1 = [[1;2;3]; [3;4;5]; [5;6;7]; [6;7;8]]
let (max_length, max_list) = max_length list1
Printf.printf "Max length is %d and corresponding list is %s\n" max_length (String.concat ", " (List.map string_of_int max_list))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the list of maximum length in a list of lists. *)
