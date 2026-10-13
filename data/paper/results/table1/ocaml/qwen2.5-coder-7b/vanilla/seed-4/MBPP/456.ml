let rec reverse_string_list (stringlist : string list) : string list = 
  List.map (fun s -> let rec reverse acc s = 
                      if s = "" then acc 
                      else reverse (s.[0] :: acc) (String.sub s 1 (String.length s - 1))
                    in reverse [] s) stringlist


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to reverse each string in a given list of string values. *)
