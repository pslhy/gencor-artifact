let rec lateralsurface_cube (l : int) : int = 
    (* base case: if the side length is zero, then return 0 *)
    if l = 0 then 0
    (* recursive case: otherwise, return the sum of the lateral surface areas of all the sides *)
    else 6 * l + lateralsurface_cube(l - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the lateral surface area of a cube given its side length. *)
