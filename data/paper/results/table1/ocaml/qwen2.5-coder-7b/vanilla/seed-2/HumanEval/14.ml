let rec all_prefixes (string : string) : string list = 
    let rec loop i acc = 
        if i > String.length string then
            acc
        else
            loop (i + 1) ((String.sub string 0 i) :: acc)
    in 
    loop 1 [] |> List.rev


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Return list of all prefixes from shortest to longest of the input string *)
(*     >>> all_prefixes "abc" *)
(*     ["a"; "ab"; "abc"] *)
