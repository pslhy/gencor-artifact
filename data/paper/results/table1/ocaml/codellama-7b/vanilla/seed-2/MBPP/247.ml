let rec lps (str : string) : int =
  match String.length str with
  | 0 -> 0
  | 1 -> 1
  | _ ->
    let m = ref 0 in
    for i = 0 to String.length str - 2 do
      let left = lps (String.sub str 0 i) in
      if left > !m then
        m := left
      else
        let right = lps (String.sub str i (String.length str - i)) in
        if right > !m then
          m := right
    done;
    !m + 1

let longest_palindromic_subsequence (str : string) : int =
  lps str


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the length of the longest palindromic subsequence in the given string. *)
