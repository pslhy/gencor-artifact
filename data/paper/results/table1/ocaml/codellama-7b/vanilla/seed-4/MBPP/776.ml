let rec count_vowels (test_str : string) : int = 
    match String.length test_str with
    | 0 -> 0
    | length -> 
        let chr = String.get test_str 0 in
        let chr_l = (if chr = 'a' || chr = 'e' || chr = 'i' || chr = 'o' || chr = 'u' then 1 else 0) in
        let chr_r = (if String.get test_str (length - 1) = 'a' || String.get test_str (length - 1) = 'e' || String.get test_str (length - 1) = 'i' || String.get test_str (length - 1) = 'o' || String.get test_str (length - 1) = 'u' then 1 else 0) in
        let sub_str_len = length - 2 in
        let sub_str = String.sub test_str 1 sub_str_len in
        if chr_l = 1 && chr_r = 1 then 1
        else count_vowels sub_str


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count those characters which have vowels as their neighbors in the given string. *)
