let rec trim_tuple (test_list : int list list) (k : int) : int list list = 
    (* base case: if the list is empty, return an empty list *)
    if test_list = [] then [] else
    (* recursive case: otherwise, extract the first k elements from the first list,
    then recursively call trim_tuple on the remaining lists *)
    let rec trim_tuple_inner (test_list : int list) (k : int) : int list list = 
        match test_list with
        | [] -> []
        | [x] -> [x]
        | _ -> trim_tuple_inner (List.tl test_list) k
    in
    let first_k = trim_tuple_inner (List.hd test_list) k in
    first_k @ trim_tuple (List.tl test_list) k

let test_lists = [ [1; 2; 3]; [4; 5; 6]; [7; 8; 9] ]
printf "@I@ trim_tuple test_lists 2 = [@[%d;%d@]];@." (trim_tuple test_lists 2)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to trim each list by k in the given lists. *)
