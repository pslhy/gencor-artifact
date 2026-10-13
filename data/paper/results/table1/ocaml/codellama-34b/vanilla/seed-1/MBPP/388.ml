let rec highest_Power_of_2 (n : int) : int =
    let rec aux x y =
        if x = 1 then y
        else if x land 1 = 0 then aux (x/2) (y*2)
        else y
    in aux n 1;;

(* Example usage:

let result = highest_Power_of_2 35
(* Output: 32 *)

let result = highest_Power_of_2 200
(* Output: 128 *)

let result = highest_Power_of_2 1024
(* Output: 1024 *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the highest power of 2 that is less than or equal to n. *)
