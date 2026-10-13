(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given a list of positive integers x. return a sorted list of all *)
(*     elements that hasn't any even digit. *)
(*     Note: Returned list should be sorted in increasing order. *)
(*     For example: *)
(*     >>> unique_digits [15; 33; 1422; 1] *)
(*     [1; 15; 33] *)
(*     >>> unique_digits [152; 323; 1422; 10] *)
(*     [] *)
let rec unique_digits (x : int list) : int list =
    match x with
    | [] -> []
    | h :: t ->
        if has_even_digit h then
            unique_digits t
        else
            h :: unique_digits t

and has_even_digit (n : int) : bool =
    let s = string_of_int n in
    let l = s |> String.to_seq |> List.of_seq in
    List.exists (fun c -> int_of_char c mod 2 = 0) l

