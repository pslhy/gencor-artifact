
let rec all_Bits_Set_In_The_Given_Range (n : int) (l : int) (r : int) : bool = 
    (* base case: If the range is empty, there are no unset bits *)
    if l = r then true
    (* Inductive case: Check if the bits from n to l are set, and all_Bits_Set_In_The_Given_Range for the rest of the recursion *)
    else if n >= l && n <= r then all_Bits_Set_In_The_Given_Range (n + 1) (l) (r)
    (* else case: Nothing is set in the given range *)
    else false

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether all the bits are unset in the given range or not. *)
