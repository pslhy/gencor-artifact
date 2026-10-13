let rec maximize_elements (test_tup1 : int list list) (test_tup2 : int list list) : int list list = 
    (* base case: if only one list is empty, return the other list *)
    if test_tup1 = [] then test_tup2
    if test_tup2 = [] then test_tup1
    (* recursive case: maximize each element from both lists *)
    else
        let max = List.map test_tup1 test_tup2 in
        (* result is the list of maximized elements *)
        let result = List.map max maximize_element in
        (* return the list of maximized elements *)
        result

(* Function to maximize an element from two lists *)
and maximize_element (a : int) (b : int) : int =
    (* return the maximum of the two elements *)
    if a > b then a
    else b

# Test the function with sample inputs
maximize_elements [] [] ;;
maximize_elements [] [1; 2; 3] ;;
maximize_elements [1; 2; 3] [] ;;
maximize_elements [1; 2; 3] [4; 5; 6] ;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to maximize the given two lists. *)
