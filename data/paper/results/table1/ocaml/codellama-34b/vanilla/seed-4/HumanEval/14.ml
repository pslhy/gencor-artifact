let rec all_prefixes (string : string) : string list =
   if string = "" then [""]
   else string :: all_prefixes (String.sub string 1 (String.length string - 1))

let all_prefixes (string : string) : string list =
   if string = "" then [""]
   else
       let rec aux prefix = function
           | 0 -> [prefix]
           | n ->
               let s = String.shift prefix 1 in
               s :: aux s (n-1)
       in
       aux string (String.length string);;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Return list of all prefixes from shortest to longest of the input string *)
(*     >>> all_prefixes "abc" *)
(*     ["a"; "ab"; "abc"] *)
