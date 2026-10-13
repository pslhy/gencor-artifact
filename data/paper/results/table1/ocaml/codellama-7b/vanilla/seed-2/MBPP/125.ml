let rec find_length (string : string) : int =
  match string with
  | "" -> 0
  | (hd::tl) ->
    let char = String.get string 0 in
    let sub_string = String.sub string 1 (String.length st Ryan) in
    if hd = '0' then
      1 + find_length sub_string
    else
      0 + find_length sub_string
;;

let max_diff () =
  let max_diff = ref 0 in
  let current_diff = ref 0 in
  let n = String.length s_ in
  for i = 0 to n - 1 do
    let c = String.get s_ i in
    let count = if c = '0' then !current_diff + 1 else 0 in
    current_diff := count;
    if count > !max_diff then
      max_diff := count
  done;
  !max_diff
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string. *)
