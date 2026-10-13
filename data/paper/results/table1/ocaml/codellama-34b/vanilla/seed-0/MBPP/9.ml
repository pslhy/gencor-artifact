let rec find_Rotations (str : string) : int =
    if str = "" then raise (Invalid_argument "str")
    elif str = String.make (String.length str) (Char.chr 0) then
        (String.length str) - 1
    else
        let l = find_Rotations (String.sub str 1 ((String.length str) - 1)) in
        if (l < (String.length str - 1)) then l + 1 else str.(0) = (String.get str ((String.length str) - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum number of rotations (greater than 0) required to get the same string. *)
