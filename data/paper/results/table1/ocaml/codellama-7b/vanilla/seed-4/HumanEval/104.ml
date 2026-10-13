let rec unique_digits (x : int list) : int list = 
    (* helper function that checks if a digit is even *)
    let rec is_even (n : int) : bool = 
        n mod 2 = 0 
    in
    (* filter out all elements with even digits *)
    List.filter (fun x -> not (is_even x)) x 
    (* sort the remaining list in increasing order *)
    |> List.sort compare
    (* return the sorted list of unique digits *)


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
