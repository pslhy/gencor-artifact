(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a tuple and an element and counts the occcurences of the element in the list. *)
let rec count_X (tup : int list) (x : int) : int = 
    (* base case: if tuple is empty return 0 *)
    (match tup with
    |[] -> 0
    (* if tuple contains one element check if it's equal to x *)
    |head::[] -> if head == x then 1 else 0
    (* if tuple contains more than one element, check if the first element 
          is equal to x and recursively call the function with the rest of the list *)
    |head::tail -> if head == x then 1 else count_X tail x);;

