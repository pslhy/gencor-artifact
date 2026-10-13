(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the first adverb and their positions in a given sentence. *)
let rec find_adverb_position (text : string) :  int * int * string =
  if(text.Length > 0)
  {
    let arr = text.Split('.') in
    FindAll(arr,("rare", "normally", "least", "more", "mostly", "nearly", "pretty", "quickly", "slightly", "somewhat", "too", "very"))

    let rec FindAll(arr,keywords: string>) 
    {
      match arr with
        |_ -> let found= ref false
              let first_adverb = arr[^].Split(' ')
                  
          loop 
          ( i = 1 to first_adverb.Length-1 
            j = i + 1 to first_adverb.Length 
            _ -> if keywords.Contains(first_adverb[i])
            
            let pos = first_adverb.Length -1-j 
            found = true
          )
        if !found then (i,pos,first_adverb[i])
          
          let pos' = FindAll("",arr[i]::'')
     
          (i,pos')
        else (-1,-1,"")
      |_ -> ("",-1)
      ]



 }


(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:18: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_adverb_position (text : string) :  int * int * string =
  if (text.Length > 0)
  then
    let arr = text.Split('.') in
    FindAll(arr,("rare", "normally", "least", "more", "mostly", "nearly", "pretty", "quickly", "slightly", "somewhat", "too", "very"))
  else
    (-1, -1, "")

let rec FindAll (arr : string list, keywords : string list) : int * int * string =
  match arr with
    | [] -> (-1, -1, "")
    | first_adverb :: [] -> find_adverb_position (first_adverb)
    | first_adverb :: rest ->
        let found = ref false in
        let rec loop i =
          if (i = first_adverb.Length - 1)
          then -1, -1, ""
          else
            let rec loop j =
              if (j = first_adverb.Length)
              then
                let pos = first_adverb.Length - 1 - j in
                let found = true in
                (i, pos, first_adverb.Substring(i, j - i))
              else
                if (keywords.Contains(first_adverb.Substring(i, j - i)))
                then
                  let pos = first_adverb.Length - 1 - j in
                  let found = true in
                  (i, pos, first_adverb.Substring(i, j - i))
                else
                  loop (j + 1)
            in
            loop 1
        in
        loop 0

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:19: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_adverb_position (text : string) :  int * int * string =
  if text.Length > 0 then
    let arr = text.Split('.') in
    FindAll(arr,("rare", "normally", "least", "more", "mostly", "nearly", "pretty", "quickly", "slightly", "somewhat", "too", "very"))
  else
    (-1, -1, "")

let rec FindAll (arr : string list, keywords : string list) : int * int * string =
  match arr with
    | [] -> (-1, -1, "")
    | first_adverb :: [] -> find_adverb_position (first_adverb)
    | first_adverb :: rest ->
        let found = ref false in
        let rec loop i =
          if i = first_adverb.Length - 1 then
            -1, -1, ""
          else
            let rec loop j =
              if j = first_adverb.Length then
                let pos = first_adverb.Length - 1 - j in
                let found = true in
                (i, pos, first_adverb.Substring(i, j - i))
              else
                if keywords.Contains(first_adverb.Substring(i, j - i)) then
                  let pos = first_adverb.Length - 1 - j in
                  let found = true in
                  (i, pos, first_adverb.Substring(i, j - i))
                else
                  loop (j + 1)
            in
            loop 1
        in
        loop 0

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:18: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_adverb_position (text : string) :  int * int * string =
  let rec find_adverb_position_helper (text : string) : int * int * string =
    if text.Length > 0 then
      let arr = text.Split('.') in
      FindAll(arr,("rare", "normally", "least", "more", "mostly", "nearly", "pretty", "quickly", "slightly", "somewhat", "too", "very"))
    else
      (-1, -1, "")
  in
  find_adverb_position_helper text

let rec FindAll (arr : string list, keywords : string list) : int * int * string =
  match arr with
    | [] -> (-1, -1, "")
    | first_adverb :: [] -> find_adverb_position (first_adverb)
    | first_adverb :: rest ->
        let found = ref false in
        let rec loop i =
          if i = first_adverb.Length - 1 then
            -1, -1, ""
          else
            let rec loop j =
              if j = first_adverb.Length then
                let pos = first_adverb.Length - 1 - j in
                let found = true in
                (i, pos, first_adverb.Substring(i, j - i))
              else
                if keywords.Contains(first_adverb.Substring(i, j - i)) then
                  let pos = first_adverb.Length - 1 - j in
                  let found = true in
                  (i, pos, first_adverb.Substring(i, j - i))
                else
                  loop (j + 1)
            in
            loop 1
        in
        loop 0

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:20: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_adverb_position (text : string) :  int * int * string =
  let rec find_adverb_position_helper (text : string) : int * int * string =
    if text.Length > 0 then
      let arr = text.Split('.') in
      FindAll(arr,("rare", "normally", "least", "more", "mostly", "nearly", "pretty", "quickly", "slightly", "somewhat", "too", "very"))
    else
      (-1, -1, "")
  in
  find_adverb_position_helper text

let rec FindAll (arr : string list, keywords : string list) : int * int * string =
  match arr with
    | [] -> (-1, -1, "")
    | first_adverb :: [] -> find_adverb_position (first_adverb)
    | first_adverb :: rest ->
        let found = ref false in
        let rec loop i =
          if i = first_adverb.Length - 1 then
            -1, -1, ""
          else
            let rec loop j =
              if j = first_adverb.Length then
                let pos = first_adverb.Length - 1 - j in
                let found = true in
                (i, pos, first_adverb.Substring(i, j - i))
              else
                if keywords.Contains(first_adverb.Substring(i, j - i)) then
                  let pos = first_adverb.Length - 1 - j in
                  let found = true in
                  (i, pos, first_adverb.Substring(i, j - i))
                else
                  loop (j + 1)
            in
            loop 1
        in
        loop 0

