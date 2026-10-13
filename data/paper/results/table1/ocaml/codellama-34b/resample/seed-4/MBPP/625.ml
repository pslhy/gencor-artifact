(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to interchange the first and last element in a given list. *)
let rec swap_List (newList : int list) : int list = 
    match newList with 
      head :: tail -> 
      (match tail with 
          last :: init -> [last]; init @ [head]; 
        ); 
      [] -> [] 

let list1 = [1;2;3;4;5] 

swap_List list1 = 5 ; 4 ; 3 ;2 ;2;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:10: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec swap_List (newList : int list) : int list =
    match newList with
        | head :: tail ->
            (match tail with
                | last :: init -> [last; init @ [head]])
        | [] -> []

let list1 = [1; 2; 3; 4; 5]
let result = swap_List list1

let () = print_endline ("The swapped list is: " ^ string_of_int(result))

