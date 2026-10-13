let rec unique_digits (x : int list) : int list =
    let rec has_even_digit (n : int) : bool =
        if n = 0 then
            false
        else
            (n mod 2 = 0) || has_even_digit (n / 10)
    in
    match x with
    | [] -> []
    | h :: t -> 
        let has_even = has_even_digit h in
        let rest = unique_digits t in
        if has_even then
            rest
        else
            h :: rest


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list of positive integers x. return a sorted list of all *)
(*     elements that hasn't any even digit. *)
(*     Note: Returned list should be sorted in increasing order. *)
(*     For example: *)
(*     >>> unique_digits [15; 33; 1422; 1] *)
(*     [1; 15; 33] *)
(*     >>> unique_digits [152; 323; 1422; 10] *)
(*     [] *)
