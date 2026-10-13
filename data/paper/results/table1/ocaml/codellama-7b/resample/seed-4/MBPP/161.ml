(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to remove all elements from a given list present in another list. *)
let rec remove_elements (list1 : int list) (list2 : int list) : int list = 
    match list2 with 
      head :: tail -> 
          (match List.mem list1.head list2 with 
                true -> 
                    remove_elements list1 tail 
                false -> 
                    head :: tail)
          | [] ->
              list1;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:23: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_elements (list1 : int list) (list2 : int list) : int list = 
  match List.find_all list1 list2 with
  | [] -> []
  | h :: t -> h :: remove_elements list1 t

