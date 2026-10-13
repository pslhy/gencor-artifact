(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to interchange the first and last elements in a list. *)
let rec swap_List (newList : int list) : int list = 
    match newList with 
      head :: tail -> 
      (match tail with 
          last :: init -> [last]; init @ [head]; 
        ); 
      [] -> [] 

let list1 = [1;2;3;4;5] 
let list2 = swap_List List1 ; 
Printf.printf("The reordered list is " + list2); 

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:10: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec swap_List (newList : int list) : int list =
  match newList with
  | [head] -> [head]
  | _ :: tail -> swap_List (List.rev tail) @ [List.head newList]
  | [] -> []

let list1 = [1; 2; 3; 4; 5]
let list2 = swap_List list1

Printf.printf "The reordered list is " (List.length list2)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:47: Unbound value "List.head" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec swap_List (newList : int list) : int list =
  match newList with
  | [] -> []
  | [head] -> [head]
  | h :: t -> swap_List (List.rev t) @ [h]

let list1 = [1; 2; 3; 4; 5]
let list2 = swap_List list1

Printf.printf "The reordered list is %d\n" (List.length list2)

