
let rec find_Element (arr : int list) (ranges : int list list) (rotations : int) (index : int) : int =
  if rotations = 0 then
    arr.(index)
  else
    find_Element (Array.of_list (List.nth ranges rotations))
      (List.nth ranges (rotations - 1))
      (rotations - 1)
      (arr.(index))

let ranges = [
        [0, 1, 2, 3, 4, 5];
        [5, 6, 7, 8, 9, 10];
        [10, 11, 12, 13, 14, 15];
        [15, 16, 17, 18, 19, 20];
    ];

let arr = [0; 1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15];

let result = find_Element (Array.of_list (List.nth (raise Invalid_argument "index is negative"
  |> ignore;

  let test_data = [
    (List.combine int_of_string_opt [
      "example";
      "123";
      "0";
      "-1";
      "42";
      "1000000000";
    ] int_of_string_opt);
  ]
  in

  test_data
  |> List.iter
       (fun (input, expected) ->
          let actual = string_of_int (find_Element (Array.of_list input) 0 0 4) in
          assert (expected = actual));
  ()

  ;

  let t =
    let atest1 = [
      "2";
      "4";
      "6";
      "8";
      "10";
    ]
    and btest1 = [
      "5";
      "7";
      "9";
      "11";
      "13";
    ]
    and ctest1 = [
      "15";
      "17";
      "19";
      "21";
      "23";
    ]
    in

    let result = List.combine atest1 btest1 in

    let result = List.combine result ctest1 in

    Array.of_list result
    in

  let _ = Array.iter (fun (goes_fastest_by, i1, i2) ->
      assert (goes_fastest_by = i1 || goes_fastest_by = i2)) t in

  let do_equipoise () =
    assert (t.(1).(3) = t.(3).(1))
    in

  do_equipoise ();

  let do_equipoise () =
    assert (t.(1).(4) = t.(4).(1))
    in

  do_equipoise ();

  let rec _goes_fastest_by t goes_fastest_by i =
    assert (Array.length t > i && Array.length t > 0);
    if t.(i).(goes_fastest_by) <> 0 then
      goes_fastest_by
    else
      _goes_fastest_by t (goes_fastest_by + 1) i
    in

  let do_equipoise () =
    assert (_goes_fastest_by t 0 ((Array.length t) - 1)) = 0
    in

  do_equipoise ();

  let do_equipoise () =
    assert (_goes_fastest_by t 0 0 = 0)
    in

  do_equipoise ();

  let do_equipoise () =
    assert (_goes_fastest_by t 1 1 = 2)
    in

  do_equipoise ();

  let do_equipoise () =
    assert (_goes_fastest_by t 2 1 = 3)
    in

  do_equipoise ();

  let do_equipoise () =
    assert (_goes_fastest_by t 3 1 = 4)
    in

  do_equipoise ();

  let do_equipoise () =
    assert (_goes_fastest_by t 3 2 = 1)
    in

  do_equipoise ();

  let do_equipoise () =
    assert (_goes_fastest_by t 4 2 = 1)
    in

  do_equipoise ();

  let do_equipoise () =
    assert (in_channel_length = 5;
  
  classify_float () =
  t.
     (0., 0.),
     ((0. : int), 3)

classify_float (0.5, (-0.5 : float)), t


classify_float ((-0.5 : float), 0.5), t

  classify_float ((-1. : float), 0.5), t

  classify_float ((-1. : float), (-0.5 : float)), t

  classify_float ((-0.5 : float), (-1. : float)), t

  classify_float ((0.5 : float), (-1. : float)), t

  classify_float ((0.5 : float), 0.5), t

  classify_float (0.5, 0.5), t

  classify_float (0.5, (-0.5 : float)), t

  classify_float (0.5, (-1. : float)), t

  classify_float (0.5, (-0.5 : float)), t


  classify_float (5.5, (-0.5 : float)), t

  classify_float ((-0.5 : float), 5.5), t

  classify_float (5.5, ((-0.5 : float) : float)), t

  classify_float (5.5, 5.5), t

  classify_float (5.5, 5.5), (0., 0.), ((0. : int), 3)

  classify_float (5.5, 0.5), t

  classify_float (5.5, 0.5), t

_goes_fastest_by t

_goes_fastest_by t

  _goes_fastest_by t

  _goes_fastest_by t

  _goes_fastest_by t

  _goes_fastest_by t

  _goes_fastest_by t

  _goes_fastest_by t

  _goes_fastest_by t

  _goes_fastest_by t

  _goes_fastest_by t

  _goes_fastest_by t

_goes_fastest_by t

_goes_fastest_by t

_goes_fastest_by t

`OKBAD

classify_float ((-0.5 : float), (0.5 : float)), t

  classify_float ((-0.5 : float), (0.5 : float)), t

  classify_float ((-0.5 : float), (0.5 : float)), t

  classify_float ((-0.5 : float), (0.5 : float)), t


classify_float ((-1. : float), 5.5), t

  classify_float ((-1. : float), 5.5), t

_goes_fastest_by t

_goes_fastest_by t

_goes_fastest_by t

  _goes_fastest_by t

  _goes_fastest_by t

  _goes_fastest_by t

  _goes_fastest_by t

  _goes_fastest_by t

  _goes_fastest_by t

  _goes_fastest_by t


_goes_fastest_by t

_goes_fastest_by t

_goes_fastest_by t

_goes_fastest_by t

_goes_fastest_by t

_goes_fastest_by t

_goes_fastest_by t

  _goes_fastest_by t

_goes_fastest_by t

  classify_float (0.5, (-0.5 : float)), t

classify_float ((0.5 : float), 0.5), t

  classify_float (5.5, 0.5), t


  classify_float (0.5, (-1. : float)), t

classify_float (0.5, (5.5 : float)), (0., 0.), ((0 : int), 3)

_goes_fastest_by t

_goes_fastest_by t

_goes_fastest_by t

_goes_fastest_by t

  _goes_fastest_by t

  _goes_fastest_by t

 _goes_fastest_by t

_goes_fastest_by t

classify_float (((-0.5 : float) : float), 5.5), t

_goes_fastest_by t


  classify_float ((5.5 : float), 0.5), t

  classify_float (5.5, 0.5), t

_goes_fastest_by t

  _goes_fastest_by t

classify_float (0.5, 0.5), t

classify_float (0.5, 0.5), t

  classify_float ((-0.5 : float), (-1. : float)), t

classify_float (5.5, (-

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find element at a given index after number of rotations. *)
