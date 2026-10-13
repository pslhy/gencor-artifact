(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that accepts a list of strings. *)
(*     The list contains different words. Return the word with maximum number *)
(*     of unique characters. If multiple strings have maximum number of unique *)
(*     characters, return the one which comes first in lexicographical order. *)
(*     >>> find_max ["name"; "of"; "string"] *)
(*     "string" *)
(*     >>> find_max ["name"; "enam"; "game"] *)
(*     "enam" *)
(*     >>> find_max ["aaaaaaa"; "bb"; "cc"] *)
(*     "aaaaaaa" *)
let rec find_max (words : string list) : string =
  match words with
  | word :: tail ->
    let num_chars = count_unique_chars word in
    let max_num_chars = ref num_chars in
    let max_word = ref word in
    tail |> List.iter (fun word' ->
      let num_chars' = count_unique_chars word' in
      if num_chars' > !max_num_chars then begin
        max_num_chars := num_chars';
        max_word := word';
      end;
    );
    !max_word
  | [] ->
    ""

and count_unique_chars (word : string) : int =
  let chars = ref [] in
  for i = 0 to String.length word - 1 do
    chars := !chars @ [word.[i]];
  done;
  List.length (List.sort String.compare (List.dedup_and_sort String.compare !chars));
;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:23:42: Unbound value "List.dedup_and_sort" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_max (words : string list) : string =
  match words with
  | word :: tail ->
    let num_chars = String.length word in
    let max_num_chars = ref num_chars in
    let max_word = ref word in
    tail |> List.iter (fun word' ->
      let num_chars' = String.length word' in
      if num_chars' > !max_num_chars then begin
        max_num_chars := num_chars';
        max_word := word';
      end;
    );
    !max_word
  | [] ->
    ""

and count_unique_chars (word : string) : int =
  let chars = ref [] in
  for i = 0 to String.length word - 1 do
    chars := !chars @ [word.[i]];
  done;
  List.length (List.sort String.compare (List.dedup_and_sort !chars));

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:23:42: Unbound value "List.dedup_and_sort" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_max (words : string list) : string =
  match words with
  | word :: tail ->
    let num_chars = String.length word in
    let max_num_chars = ref num_chars in
    let max_word = ref word in
    tail |> List.iter (fun word' ->
      let num_chars' = String.length word' in
      if num_chars' > !max_num_chars then begin
        max_num_chars := num_chars';
        max_word := word';
      end;
    );
    !max_word
  | [] ->
    ""

and count_unique_chars (word : string) : int =
  let chars = ref [] in
  for i = 0 to String.length word - 1 do
    chars := !chars @ [word.[i]];
  done;
  List.length (List.sort String.compare (List.unique !chars));

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:23:42: Unbound value "List.unique" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_max (words : string list) : string =
  match words with
  | word :: tail ->
    let num_chars = String.length word in
    let max_num_chars = ref num_chars in
    let max_word = ref word in
    tail |> List.iter (fun word' ->
      let num_chars' = String.length word' in
      if num_chars' > !max_num_chars then begin
        max_num_chars := num_chars';
        max_word := word';
      end;
    );
    !max_word
  | [] ->
    ""

and count_unique_chars (word : string) : int =
  let chars = ref [] in
  for i = 0 to String.length word - 1 do
    chars := !chars @ [word.[i]];
  done;
  List.length (List.sort String.compare (List.sort_uniq ~cmp:String.compare !chars));

