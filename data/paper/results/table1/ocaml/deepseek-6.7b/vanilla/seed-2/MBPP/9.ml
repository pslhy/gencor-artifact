let rec find_Rotations (str : string) : int =
  let len = String.length str in
  let temp = str ^ str in
  let min_val = ref len in
  let rotations = ref 0 in
  for i = 1 to len do
    if (String.sub temp i len) = str then
      rotations := i;
    if String.sub temp i len) !min_val = min !min_val i
  done;
  if !rotations = len then
    0
  else
    len - !min_val


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum number of rotations (greater than 0) required to get the same string. *)
