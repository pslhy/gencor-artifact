(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the first adverb ending with ly and its positions in a given string. *)
let rec find_adverbs (text : string) : string =
    let rec aux (i : int) (acc : string) =
        if i >= String.length text then
            acc
        else if text.[i] = 'ly' && (String.get text (i - 1)) = ' ' then
            aux (i + 1) (text.[i - 1] ^ text.[i] ^ acc)
        else
            aux (i + 1) acc
    in
    aux 0 ""

let find_positions (text : string) : int * int =
    let rec aux (i : int) (start : int) =
        if i >= String.length text then
            (start, i - start)
        else if text.[i] = ' ' then
            aux (i + 1) (i + 1)
        else
            aux (i + 1) start
    in
    aux 0 0

let find_first_adverb (text : string) : (int * int) option =
    match find_positions text with
    | (0, _) -> None
    | (start, len) -> Some (start, start + len - 1)

let trim (text : string) : string * (int * int) list =
    let rec aux (i : int) (acc : (int * int) list) =
        if i >= String.length text then
            (text, acc)
        else if Char.is_space text.[i] then
            aux (i + 1) acc
        else
            aux (i + 1) ((i, i + 1) :: acc)
    in
    aux 0 []

let extract_adverb (text : string) : string * (int * int) option =
    let text = find_first_adverb text in
    match text with
    | None -> ("", None)
    | Some (start, end_pos) ->
        let (trimmed_text, positions) = trim (String.sub text start (end_pos - start + 1)) in
        (trimmed_text, Some (positions.(0)))

let extract_adverbs (text : string) : (string * (int * int) option) list =
    let rec aux (i : int) (acc : (string * (int * int) option) list) =
        if i >= String.length text then
            acc
        else if Char.is_space text.[i] then
            aux (i + 1) acc
        else
            let (trimmed_text, position) = extract_adverb (String.sub text i (String.length text - i) in
            aux (i + String.length trimmed_text) ((trimmed_text, position) :: acc)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:28: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_adverbs (text : string) : string =
    let rec aux (i : int) (acc : string) =
        if i >= String.length text then
            acc
        else if text.[i] = '(' && text.[i + 1] = ')' then
            aux (i + 2) (acc ^ "LY")
        else
            aux (i + 1) acc
    in
    aux 0 ""

let find_positions (text : string) : int * int =
    let rec aux (i : int) (start : int) =
        if i >= String.length text then
            (start, i - start)
        else if text.[i] = ' ' then
            aux (i + 1) (i + 1)
        else
            aux (i + 1) start
    in
    aux 0 0

let find_first_adverb (text : string) : (int * int) option =
    match find_positions text with
    | (0, _) -> None
    | (start, len) -> Some (start, start + len - 1)

let trim (text : string) : string * (int * int) list =
    let rec aux (i : int) (acc : (int * int) list) =
        if i >= String.length text then
            (text, acc)
        else if Char.is_space text.[i] then
            aux (i + 1) acc
        else
            aux (i + 1) ((i, i + 1) :: acc)
    in
    aux 0 []

let extract_adverb (text : string) : string * (int * int) option =
    let text = find_first_adverb text in
    match text with
    | None -> ("", None)
    | Some (start, end_pos) ->
        let (trimmed_text, positions) = trim (String.sub text start (end_pos - start + 1)) in
        (trimmed_text, Some (positions.(0)))

let extract_adverbs (text : string) : (string * (int * int) option) list =
    let rec aux (i : int) (acc : (string * (int * int) option) list) =
        if i >= String.length text then
            acc
        else if Char.is_space text.[i] then
            aux (i + 1) acc
        else
            let (trimmed_text, position) = extract_adverb (String.sub text i (String.length text - i) in
            aux (i + String.length trimmed_text) ((trimmed_text, position) :: acc)

let test_adverbs (text : string) (expected : (string * (int * int) option) list) =
    let obtained = extract_adverbs text in
    match obtained with
    | [] -> failwith "obtained empty list"
    | _ -> ignore (List.fold_left (fun x y -> x ^ "," ^ snd y ^ ":" ^ string_of_int (fst y) ^ "=" ^ string_of_int (snd y)) "" obtained);

test_adverbs "hello world" ["LY"];;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:54:103: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_adverbs (text : string) : string =
  let rec aux (i : int) =
    if i >= String.length text then
      ""
    else if text.[i] = 'L' && text.[i + 1] = 'Y' then
      aux (i + 2) ^ "LY"
    else
      aux (i + 1)
  in
  aux 0

let find_positions (text : string) : (int * int) list =
  let rec aux (i : int) (acc : (int * int) list) =
    if i >= String.length text then
      acc
    else if text.[i] = ' ' then
      aux (i + 1) (acc @ [(i + 1, 0)])
    else
      aux (i + 1) (acc @ [(i, i + 1)])
  in
  aux 0 []

let find_first_adverb (text : string) : (int * int) option =
  match find_positions text with
  | [] -> None
  | (start, len) :: _ -> Some (start, start + len - 1)

let trim (text : string) (positions : (int * int) list) : string * (int * int) list =
  let rec aux (i : int) (acc : int * int list) =
    if i >= String.length text then
      acc
    else if Char.is_whitespace text.[i] then
      aux (i + 1) acc
    else if List.mem (i, i + 1) positions then
      let (_, pos) = acc in
      let (_, new_pos) = pos @ [(i, i + 1)] in
      aux (i + 1) (text.[i], new_pos)
    else
      aux (i + 1) (text.[i], pos)
  in
  let (trimmed_text, new_positions) = aux 0 ("", []) in
  (trimmed_text, new_positions)

let extract_adverb (text : string) (position : (int * int) option) : string * (int * int) option =
  match position with
  | None -> ("", None)
  | Some (start, end_pos) ->
      let (trimmed_text, new_positions) = trim (String.sub text start (end_pos - start + 1)) (List.filter (fun (x, _) -> x >= start && x <= end_pos) new_positions) in
      (trimmed_text, Some (start, end_pos))

let extract_adverbs (text : string) : (string * (int * int) option) list =
  let rec aux (i : int) (acc : (string * (int * int) option) list) =
    if i >= String.length text then
      acc
    else if Char.is_whitespace text.[i] then
      aux (i + 1) acc
    else if List.mem (i, i + 1) (find_positions text) then
      let (current_adverb, position) = extract_adverb (String.sub text i (String.length text - i)) (Some (i, i + 1)) in
      let (_, new_positions) = aux (i + 1) acc in
      aux (i + String.length current_adverb) (current_adverb, position) :: new_positions
    else
      aux (i + 1) acc
  in
  aux 0 []

let test_adverbs (text : string) (expected : (string * (int * int) option) list) =
  let obtained = extract_adverbs text in
  match obtained with
  | [] -> failwith "obtained empty list"
  | _ -> ignore (List.fold_left (fun x y -> x ^ "," ^ snd y ^ ":" ^ string_of_int (fst y) ^ "=" ^ string_of_int (snd y)) "" obtained);

test_adverbs "What a great LY day!" [("LY", Some (7, 8))]

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:32:13: Unbound value "Char.is_whitespace" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_adverbs (text : string) : string =
  let rec aux (i : int) (acc : string) =
    if i >= String.length text then
      acc
    else if Char.is_whitespace text.[i] then
      aux (i + 1) acc
    else
      let (word, new_i) = extract_word (i, text) in
      aux new_i (acc ^ " " ^ word)
  in
  aux 0 ""

and extract_word (i, text) : string * int =
  let j = ref i in
  while !j < String.length text && not (Char.is_whitespace text.[!j]) do
    j := !j + 1
  done;
  (String.sub text i (!j - i), !j)

let test_adverbs =
  find_adverbs "What a great LY day!" = "LY"

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:13: Unbound value "Char.is_whitespace" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_adverbs (text : string) : string =
  let rec aux (i : int) (acc : string) =
    if i >= String.length text then
      acc
    else if Char.is_whitespace text.[i] then
      aux (i + 1) acc
    else
      let (word, new_i) = extract_word (i, text) in
      aux new_i (acc ^ " " ^ word)
  in
  aux 0 ""

and extract_word (i, text) : string * int =
  let j = ref i in
  while !j < String.length text && not (Char.is_whitespace text.[!j]) do
    j := !j + 1
  done;
  (String.sub text i (!j - i), !j)

let test_adverbs =
  find_adverbs "What a great LY day!" = "LY"

