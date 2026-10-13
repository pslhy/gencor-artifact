let rec has_close_elements (numbers : float list) (threshold : float) : bool = 
    match numbers with
    | [] | [_] -> false
    | h1::t1 -> 
        let close_to_h1 = List.exists (fun h2 -> abs (h1 - h2) < threshold) t1 in
        if close_to_h1 then true else has_close_elements t1 threshold


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Check if in given list of numbers, are any two numbers closer to each other than *)
(*     given threshold. *)
(*     >>> has_close_elements [1.0; 2.0; 3.0] 0.5 *)
(*     false *)
(*     >>> has_close_elements [1.0; 2.8; 3.0; 4.0; 5.0; 2.0] 0.3 *)
(*     true *)
