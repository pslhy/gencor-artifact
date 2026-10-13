let rec occurance_substring (text : string) (pattern : string) :  string * int * int option = 
 let aux acc i = 
  let rec find j = 
   if j = String.length pattern then 
    (Some (i, j - i))
   else if i + j = String.length text || text.[i + j] <> pattern.[j] then 
    None
   else find (j + 1)
  in 
  match find 0 with
  | Some p -> Some ((i, p))
  | None -> acc in
 let rec loop i acc =
  if i + String.length pattern > String.length text then acc
  else loop (i+1) (acc |> aux i) in
 loop 0 None;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the occurrence and position of the substrings within a string. Return None if there is no match. *)
