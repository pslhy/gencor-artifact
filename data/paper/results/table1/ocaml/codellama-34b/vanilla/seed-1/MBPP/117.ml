let rec list_to_float (test_list :  (string * string) list) :  (float * float) list =
    let is_convertible s =
        try
            float_of_string s;
            true
        with
            Failure _ -> false
    in
    let hd = List.head test_list in
    let tl = List.tail test_list in
    if hd = [] then []
    else if is_convertible (fst hd) && is_convertible (snd hd) then (float_of_string (fst hd), float_of_string (snd hd)) :: list_to_float tl
    else list_to_float tl


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert all possible convertible elements in a list of lists to floats. *)
