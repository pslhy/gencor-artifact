let rec extract_rear (test_tuple :  string * string * string) : string list = 
  List.map (fun s -> String.sub s (String.length s - 1) 1) [fst test_tuple; snd test_tuple; snd (snd test_tuple)]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract only the rear index element of each string in the given tuple. *)
