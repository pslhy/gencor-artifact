
let rec words_string (s : string) : string list =
  let is_word_char c =
    let c = Char.lowercase_ascii c in
    'a' <= c && c <= 'z' || '0' <= c && c <= '9'
  in
  let rec split_words acc i =
    if i >= String.length s then
      List.rev acc
    else
      let word_start =
        try
          let i' = String.index_from s i ' ' in
          if Char.equal (String.get s i') ' ' then
            i'
          else
            raise Not_found
        with Not_found -> 0
      in
      let word_end =
        try
          let i' = ref (String.index_from s word_start ' ') in
          while Char.equal (String.get s !i') ' ' do
            incr i';
            i' := String.index_from s !i' '
'
          done;
          !i'
        with Not_found -> String.length s
      in
      let word = String.sub s word_start (word_end - word_start) in
      split_words (word :: acc) (word_end + 1)
  in
  split_words [] 0;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     You will be given a string of words separated by commas or spaces. Your task is *)
(*     to split the string into words and return a list of the words. *)
(*     For example: *)
(*     >>> words_string "Hi, my name is John" *)
(*     ["Hi"; "my"; "name"; "is"; "John"] *)
(*     >>> words_string "One, two, three, four, five, six" *)
(*     ["One"; "two"; "three"; "four"; "five"; "six"] *)
