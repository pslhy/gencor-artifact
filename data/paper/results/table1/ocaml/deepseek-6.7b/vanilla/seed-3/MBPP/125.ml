let rec find_length (string : string) : int =
  let b_count = ref 0 in
  let z_count = ref 0 in
  let max_diff = ref 0 in
  for i = 0 to (String.length string - 1) do
    if string.[i] = '0' then incr z_count
    else if string.[i] = '1' then incr b_count
    else ();
    max_diff := max !max_diff (abs (!b_count - !z_count))
  done;
  !max_diff


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string. *)
