
let rec differ_At_One_Bit_Pos (a : int) (b : int) : bool = 
    (* XOR the two numbers with the mask corresponding to 101010101. *)
    let res = a ^ b and
        
    ifres = 0
        (* XOR the two numbers with the mask corresponding to 101010101. *)
        (* If the result is 0, the numbers differ at exactly two bit positions. *)
        (* Otherwise, check the next bit positions. *)
        in differ_At_One_Bit_Pos (res / 10) (res mod 10)
    res == 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the two numbers differ at one bit position only or not. *)
