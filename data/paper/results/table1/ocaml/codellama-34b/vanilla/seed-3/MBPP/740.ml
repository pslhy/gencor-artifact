let rec tuple_to_dict (test_tup :  int * int * int * int * int * int) : (int * int) list =
  if(test_tup != null)
  {
    let front, back = test_tup.shift()
    back, front
  }
  else
  {
    []
  }
  
let rec associate (test_tup :  int * int * int * int * int * int) : (int * int) list =
  tuple_to_dict (test_tup 
    exif_tup = test_tup)
      
let rec support (test_tup :  int * int * int * int * int * int) : (int * int) list =
  exif_key
    exif_ key = calues(test_tup)
      exif_value = calues(test_tup)

let rec create_dict (test_tup :  int * int * int * int * int * int) : (int * int) list =
  let dict = associate ()
    while (test_tup = null)
    {
      let exif_key, exif _value = support ()
      dict @ (exif_key, exif_value)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert the given tuple to a key-value association list using adjacent elements. https://www.geeksforgeeks.org/mlthon-convert-tuple-to-adjacent-pair-association list/ *)
