let rec differ_At_One_Bit_Pos (a : int) (b : int) : bool = 
    (* Check if the two numbers are equal *)
    if (a = b) then false
    (* Check if the two numbers have only one bit set *)
    else if (a land (lnot (a - 1)) = b land (lnot (b - 1))) then true
    (* Check if the two numbers have only one bit set in the same position *)
    else if (a land (lnot (a - 1)) = b land (lnot (b - 1))) && (a land (lnot (a - 1)) <> b land (lnot (b - 1))) then true
    (* Check if the two numbers do not have one bit set *)
    else false

let () = print_endline
    (if (differ_At_One_Bit_Pos 1 2) then "Yes" else "No")
    (if (differ_At_One_Bit_Pos 2 1) then "Yes" else "No")
    (if (differ_At_One_Bit_Pos 16 23) then "Yes" else "No")
    (if (differ_At_One_Bit_Pos 23 16) then "Yes" else "No")
    (if (differ_At_One_Bit_Pos 5 5) then "Yes" else "No")
    (if (differ_At_One_Bit_Pos 10 10) then "Yes" else "No")
    (if (differ_At_One_Bit_Pos 100 100) then "Yes" else "No")
    (if (differ_At_One_Bit_Pos 20 25) then "Yes" else "No")
    (if (differ_At_One_Bit_Pos 25 20) then "Yes" else "No")
    (if (differ_At_One_Bit_Pos 5 10) then "Yes" else "No")
    (if (differ_At_One_Bit_Pos 10 5) then "Yes" else "No")
    (if (differ_At_One_Bit_Pos 20 10) then "Yes" else "No")
    (if (differ_At_One_Bit_Pos 10 20) then "Yes" else "No")


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the two numbers differ at one bit position only or not. *)
