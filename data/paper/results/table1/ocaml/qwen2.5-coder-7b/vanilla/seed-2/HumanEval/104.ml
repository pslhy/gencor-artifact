let rec unique_digits (x : int list) : int list = 
    let has_even_digit n =
        let rec check num =
            if num = 0 then false
            else let digit = num mod 10 in
                 if digit mod 2 = 0 then true
                 else check (num / 10)
        in check n
    in
    let filtered = List.filter (fun x -> not (has_even_digit x)) x in
    List.sort compare filtered


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
