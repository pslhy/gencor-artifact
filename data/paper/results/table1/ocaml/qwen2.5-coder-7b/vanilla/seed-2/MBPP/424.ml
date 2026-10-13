let rec extract_rear (test_tuple :  string * string * string) : string list = 
    let extract_last str = 
        let len = String.length str in 
        if len > 0 then str.[len - 1] else '\000' in
    [extract_last (fst test_tuple); extract_last (snd test_tuple); extract_last (thd test_tuple)]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract only the rear index element of each string in the given tuple. *)
