let rec find_Rotations (str : string) : int =
    match String.length str with
    | 0 -> 0
    | _ ->
        let rev_str = String.sub (str, 0, String.length str) in
        let rotations = ref [] in
        for i = 0 to String.length str - 1 do
            rotations := (String.sub (str, i, String.length str - i) ^ String.sub (str, 0, i)) :: !rotations;
        done;
        let rec helper (rotations : string list) (min_rotations : int) =
            match rotations with
            | [] -> min_rotations
            | rotation :: rest ->
                if rotation = rev_str then
                    min (List.length !rotations) min_rotations
                else
                    helper rest (min (List.length !rotations) min_rotations + 1)
        in
        helper !rotations 0;



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum number of rotations (greater than 0) required to get the same string. *)
