(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that takes in a list and an element and inserts the element before each element in the list, and returns the resulting list. *)
let rec insert_element (list : string list) (element : string) : string list =
    match list with
    | [] -> []
    | x :: xs -> x :: element :: insert_element xs element
;;

let my_list = [1; 2; 3; 4]
let my_element = 9

insert_element my_list my_element;;

