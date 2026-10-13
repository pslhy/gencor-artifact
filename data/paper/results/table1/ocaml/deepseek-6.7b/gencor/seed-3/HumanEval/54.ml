
let rec same_chars (s0 : string) (s1 : string) : bool =
  let s0 = String.lowercase_ascii s0
  and s1 = String.lowercase_ascii s1 in
  let chars0 = String.to_seq s0 |> List.of_seq
  and chars1 = String.to_seq s1 |> List.of_seq in
  (* Count the occurrence of each character in both strings *)
  let count_chars l = List.fold_left (fun m e ->
  	try let n = Hashtbl.find m e in Hashtbl.replace m e (n+1)
  	with Not_found -> Hashtbl.add m e 1) (Hashtbl.create 26) l in
  let counts0 = count_chars chars0
  and counts1 = count_chars chars1 in
  (* Check if the counts of all characters are the same *)
  let are_counts_same () =
  	List.for_all (fun k -> try Hashtbl.find counts0 k = Hashtbl.find counts1 k with Not_found -> false) (Hashtbl.fold (fun k _ a -> k::a) counts0 []) in
  if List.length chars0 <> List.length chars1 then false
  else are_counts_same ()

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Check if two words have the same characters. *)
(*     >>> same_chars "eabcdzzzz" "dddzzzzzzzddeddabc" *)
(*     true *)
(*     >>> same_chars "abcd" "dddddddabc" *)
(*     true *)
(*     >>> same_chars "dddddddabc" "abcd" *)
(*     true *)
(*     >>> same_chars "eabcd" "dddddddabc" *)
(*     false *)
(*     >>> same_chars "abcd" "dddddddabce" *)
(*     false *)
(*     >>> same_chars "eabcdzzzz" "dddzzzzzzzddddabc" *)
(*     false *)
