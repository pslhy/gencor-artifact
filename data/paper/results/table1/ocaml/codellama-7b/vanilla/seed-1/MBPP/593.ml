let rec removezero_ip (ip : string) : string =
  let lastZero = String.index ip '.' in
  match lastZero with
  | None -> ip
  | Some 0 -> ip
  | Some i ->
      let subStr = String.sub ip 0 i in
      let remainingStr = String.sub ip (i + 1) (String.length ip - i - 1) in
      subStr ^ "." ^ removezero_ip remainingStr


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove leading zeroes from an ip address. *)
