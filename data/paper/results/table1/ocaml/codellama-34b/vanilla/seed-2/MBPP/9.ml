let rec find_Rotations (str : string) : int =
    let len = String.length str in
    if len = 1 || len = 0 then len else
    let rec loop rotations =
        let sub = Utils.sub_str str rotations len in
        if sub = str then rotations + 1 else loop (rotations + 1)
    in if loop 1 = len then 0 else findRotations (Utils.rotate str)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum number of rotations (greater than 0) required to get the same string. *)
