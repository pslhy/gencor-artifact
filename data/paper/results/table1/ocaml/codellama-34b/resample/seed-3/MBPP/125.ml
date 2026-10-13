(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string. *)
let rec find_length (string : string) : int =
  if(string.Length <= 1)
  string.Length - 1;
  else
  let hashMap = new HashMap<int, bool>();
  let maxLength = 1;
  let currentLength = 1;

  for i = 1 to string.Length do
  if(hashMap.contains(string.[i]))
  currentLength += 1;
  else
  hashMap.put(string.[i], true);
  maxLength = max(maxLength, currentLength);
  currentLength = 1;

  maxLength

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:20: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_length (string : string) : int =
  if (String.length string) <= 1 then
    (String.length string) - 1
  else
    let hashMap = new HashMap<int, bool>() in
    let maxLength = 1 in
    let currentLength = 1 in
    for i = 1 to (String.length string) do
      if hashMap.contains (string.[i]) then
        currentLength + 1
      else
        hashMap.put (string.[i], true)
        maxLength = max maxLength currentLength
        currentLength = 1
  done;
  maxLength

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:30: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_length (string : string) : int =
  if String.length string <= 1 then
    String.length string - 1
  else
    let hashMap = new HashMap<int, bool>() in
    let maxLength = 1 in
    let currentLength = 1 in
    for i = 1 to String.length string do
      if hashMap.contains (string.[i]) then
        currentLength + 1
      else
        hashMap.put (string.[i], true)
        maxLength = max maxLength currentLength
        currentLength = 1
  done;
  maxLength

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:30: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_length (string : string) : int =
  if String.length string <= 1 then
    String.length string - 1
  else
    let hashMap = new HashMap<int, bool>() in
    let maxLength = 1 in
    let currentLength = 1 in
    for i = 1 to String.length string do
      if hashMap.containsKey (string.[i]) then
        currentLength + 1
      else
        hashMap.put (string.[i], true)
        maxLength = max maxLength currentLength
        currentLength = 1
  done;
  maxLength

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:30: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_length (string : string) : int =
  if String.length string <= 1 then
    0
  else
    let hashMap = Hashtbl.create (module String) in
    let maxLength = 0 in
    let currentLength = 0 in
    for i = 0 to String.length string - 1 do
      if Hashtbl.mem hashMap string.[i] then
        currentLength + 1
      else
        Hashtbl.put hashMap string.[i] 1
        maxLength = max maxLength currentLength
        currentLength = 1
    done;
    maxLength

