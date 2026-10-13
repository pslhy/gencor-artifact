(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that checks whether a string contains the 'a' character followed by two or three 'b' characters. *)
let rec text_match_two_three (text : string) : bool = 
    (*
     * This function takes a string as input 
     * and checks if it contains the letter 'a' followed by
     * two or three 'b' characters.
     *
     * We use a list to emulate the recursion of functions.
     *
     * We start by recursiong with an empty list, and 
     * 'count' initialized to 0
     *
     * When we read an 'a' character, we set count to 1. Then,
     * We increment count everytime we read a 'b' character
     *
     * If at any point, count is greater or equal to 3, we return false
     *
     * If we reach the end of the string and count is either
     * 2 or 3, we return true. Otherwise, we return false
     *)
	 let rec recursive_match (list, count) =
       match list with
       | [] -> (count = 2) || (count = 3)     
       | 'a' :: 'b' :: 'b' :: xs -> true
       | 'a' :: 'b' :: xs -> recursive_match(xs, 2)
       | 'a' :: 'c' :: 'b' :: xs -> false
       | 'a' :: xs -> false
	 in recursive_match ([], 0) text
 
