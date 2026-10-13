let rec extract_values (text : string) : string list =
    let start_idx = String.index text '"' in
    let values = ref [] in
    let rec sub_text = String.sub text start_idx (String.length text - start_idx) in
    let is_start_idx = String.index sub_text '"' >= 0 in
    let is_end_idx = String.index sub_text '"' >= 0 in
    let value = String.sub sub_text (String.index sub_text '"') (String.index sub_text '"') in
    values := value :: !values
    done;
    !values
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract values between quotation marks from a string. *)
