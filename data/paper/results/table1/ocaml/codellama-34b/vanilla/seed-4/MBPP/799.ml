let rec left_rotate (n : int) (d : int) : int = 
    (* Right shift n by d bits and return the result. *)
    n lsr d
    (* Left shift n by the number of bits in an int minus d and return the result. *)
    lsl (sizeof(int) * 8 - d)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to that rotate left bits by d bits a given number. We assume that the number is 32 bit. *)
