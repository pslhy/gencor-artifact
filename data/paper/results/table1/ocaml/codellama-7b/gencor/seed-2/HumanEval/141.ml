
let rec file_name_check (file_name : string) : string =
  let num_digits = String.fold_left (fun n c -> if Char.equal c '0' || Char.equal c '9' then n + 1 else n) 0 file_name in
  if num_digits > 3 then
    "No"
  else
    let split = String.rindex_opt file_name '.' in
    match split with
    | Some split ->
      let pre, suf = String.sub file_name 0 split, String.sub file_name (split + 1) (String.length file_name - (split + 1)) in
      if String.length pre = 0 || (Char.lowercase_ascii (String.get pre 0) < 'a' || Char.lowercase_ascii (String.get pre 0) > 'z') then
        "No"
      else
        begin match suf with
        | "txt" | "exe" | "dll" -> "Yes"
        | _ -> "No"
        end
    | None -> "No"
;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Create a function which takes a string representing a file's name, and returns *)
(*     'Yes' if the the file's name is valid, and returns 'No' otherwise. *)
(*     A file's name is considered to be valid if and only if all the following conditions *)
(*     are met: *)
(*     - There should not be more than three digits ('0'-'9') in the file's name. *)
(*     - The file's name contains exactly one dot '.' *)
(*     - The substring before the dot should not be empty, and it starts with a letter from *)
(*     the latin alphapet ('a'-'z' and 'A'-'Z'). *)
(*     - The substring after the dot should be one of these: ['txt', 'exe', 'dll'] *)
(*     Examples: *)
(*     >>> file_name_check "example.txt" *)
(*     "Yes" *)
(*     >>> file_name_check "1example.dll" *)
(*     "No" *)
