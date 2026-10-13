
let rec odd_Equivalent (s : string) (n : int) : int =
    if n = 0 then 0
    else
        match (String.to_seq s |> List.of_seq) with
        | [] -> 0
        | h :: t ->
            let rotated = t @ [h] |> String.of_seq |> List.of_seq in
            (if (int_of_string h) mod 2 = 1 then 1 else 0) + odd_Equivalent (String.of_seq (List.to_seq rotated)) (n-1)

(* Example usage:
   odd_Equivalent "101" 3;; 
   This will return 3, as all three rotations of "101" are "101", "010", and "101". *)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the number of numbers with an odd value when rotating a binary string the given number of times. *)
