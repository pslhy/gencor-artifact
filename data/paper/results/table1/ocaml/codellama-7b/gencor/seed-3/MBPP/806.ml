
let rec max_run_uppercase (test_str : string) : int =
  if test_str = "" then
    0
  else
    let first_uppercase_index = ref 0 in
    let last_uppercase_index = ref 0 in
    let curr_index = ref 0 in

    while !curr_index < String.length test_str do
      if Char.uppercase_ascii test_str.[!curr_index] = test_str.[!curr_index] then begin
        if !first_uppercase_index = 0 then begin
          first_uppercase_index := !curr_index;
        end;
        last_uppercase_index := !curr_index;
      end;
      incr curr_index;
    done;

    !last_uppercase_index - first_uppercase_index + 1

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find maximum run of uppercase characters in the given string. *)
