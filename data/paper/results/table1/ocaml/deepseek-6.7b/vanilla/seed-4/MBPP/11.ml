let rec remove_Occ (s : string) (ch : string) : string =
  let len = String.length s in
  if len = 0 then s
  else if String.get s 0 = (String.get ch 0) then remove_Occ (String.sub s 1 (len - 1)) ch
  else if String.get s (len - 1) = (String.get ch 0) then begin
    let rec remove_from_end (s : string) (ch : string) (pos : int) : string =
      if pos = -1 then s
      else if String.get s pos = (String.get ch 0) then String.sub s 0 pos ^ String.sub s (pos + 1) (len - pos - 1)
      else remove_from_end s ch (pos - 1) in
    remove_from_end s ch (len - 2)
  end
  else s

(* Examples *)

let s1 = remove_Occ "abcabca" "a"
let s2 = remove_Occ "xxxxxxx" "x"
let s3 = remove_Occ "hello world" "o"

(* Outputs *)

(* s1 = "bcabca"
   s2 = "xxxxxx"
   s3 = "hell wrld" *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to remove first and last occurrence of a given character from the string. *)
