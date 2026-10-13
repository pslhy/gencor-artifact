
let rec list_to_float (test_list :  (string * string) list) :  (float * float) list =
    let is_convertible s =
        try
            float_of_string s;
            true
        with
            Failure _ -> false
    in
    let hd = List.map fst test_list in
    let tl = List.map snd test_list in
    if (is_convertible hd) && (is_convertible tl) then
        (float_of_string hd, float_of_string tl)::[]
    else
        []

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert all possible convertible elements in a list of lists to floats. *)
