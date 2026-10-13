let rec reverse_Array_Upto_K (input : int list) (k : int) : int list =
    match input with
    | [] -> []
    | _ ->
        let rev = rev k input in
        let rev_k = rev.(k - 1) in
        rev.(0) :: rev_k :: rev.(k - 1) :: rev_k :: []

let test() =
    let l = [1; 2; 3; 4; 5; 6; 7; 8; 9; 10] in
    let r = reverse_Array_Upto_K l 4 in
    Printf.printf "%d\n" r

let _ = test()


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse a list upto a given position. *)
