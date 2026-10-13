
let rec find_literals (text : string) (pattern : string) :  string * int * int = 
    let open Buffer in
    let pattern_len = String.length pattern in 
    let text_len = String.length text in 
    let pattern_buf = Buffer.create pattern_len in
    let text_buf = Buffer.create text_len in
   
    let rec helper (text_index : int) (pattern_index : int) (backtrack : int -> int) :  string * int * int = begin
        if (text_index = text_len && pattern_index = pattern_len) then (Buffer.contents pattern_buf, text_len - pattern_len, text_len)
        else if pattern_index =  pattern_len then (Buffer.contents text_buf, text_index - pattern_len, text_index) 
        else
            match String.get text text_index with 
                | matched when (matched = String.get pattern pattern_index) -> 
                    Buffer.add_char pattern_buf (string_of_int matched); 
                     helper (text_index + 1) (pattern_index + 1) (fun x -> text_index + x) 
                | unmatched when pattern_index = 0 -> 
                   Buffer.add_char text_buf (string_of_int unmatched);
                   helper (text_index + 1) 0 (fun x -> text_index + x)
                | _ -> (None, (backtrack pattern_index + 1), text_index)
        end
    in
    helper 0 0 (fun x -> x)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to search a string for a regex pattern. The function should return the matching subtring, a start index and an end index. *)
