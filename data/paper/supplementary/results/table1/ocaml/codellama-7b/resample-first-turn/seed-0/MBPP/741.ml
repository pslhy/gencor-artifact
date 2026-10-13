let rec all_Characters_Same (s : string) : bool =
  if s = "" then true
  else s.[0] = s.[1] && all_Characters_Same (s.[2..])

let () =
  Printf.printf "all 'a's: %b\n" (all_Characters_Same "aaaa");
  Printf.printf "mixed 'a' and 'b': %b\n" (all_Characters_Same "aabb");
  Printf.printf "empty string: %b\n" (all_Characters_Same "")


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether all the characters are same or not. *)
