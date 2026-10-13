let rec anti_shuffle (s : string) : string = 
  let rec sort_chars (chars : char list) : char list = 
    List.sort compare chars 
  in
  let rec process_word (word : string) (acc : char list) : char list = 
    if String.length word = 0 then 
      List.rev acc 
    else 
      process_word (String.sub word 1 (String.length word - 1)) 
                   (sort_chars (word.[0] :: acc)) 
  in
  let rec build_result (s : string) : string = 
    match String.index_opt s ' ' with 
    | Some i -> 
        let word = String.sub s 0 i in 
        let rest = String.sub s (i + 1) (String.length s - i - 1) in 
        build_result ("/" ^ (process_word word [] |> List.map string_of_char |> String.concat "") ^ " ") ^ (anti_shuffle rest)
    | None -> 
        process_word s [] |> List.map string_of_char |> String.concat "" 
  in
  if String.contains s ' ' then 
    build_result s
  else 
    process_word s [] |> List.map string_of_char |> String.concat ""


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes a string and returns an ordered version of it. *)
(*     Ordered version of string, is a string where all words (separated by space) *)
(*     are replaced by a new word where all the characters arranged in *)
(*     ascending order based on ascii value. *)
(*     Note: You should keep the order of words and blank spaces in the sentence. *)
(*     For example: *)
(*     >>> anti_shuffle "Hi" *)
(*     "Hi" *)
(*     >>> anti_shuffle "hello" *)
(*     "ehllo" *)
(*     >>> anti_shuffle "Hello World!!!" *)
(*     "Hello !!!Wdlor" *)
